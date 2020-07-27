pragma solidity ^0.4.17;

contract ReportCard {
    
    string public Name;
    uint public RollNo;
    string public Batch;
    uint public subject1Marks;
    uint public subject2Marks;
    uint public subject3Marks;
    uint public subject4Marks;
    string public status;
    
    function setReportCardDetails(string newName,uint newRollNo,string newBatch,uint newsubject1Marks,uint newsubject2Marks,uint newsubject3Marks,uint newsubject4Marks) public {
        Name = newName;
        RollNo = newRollNo;
        Batch = newBatch;
        subject1Marks = newsubject1Marks;
        subject2Marks = newsubject2Marks;
        subject3Marks = newsubject3Marks;
        subject4Marks = newsubject4Marks;
        
        uint total = subject1Marks + subject2Marks +subject3Marks + subject4Marks;
        uint avg = (total*100) / 400;
        
        if(avg > 40){
            status = "PASS";
        }
        else{
            status = "FAIL";
        }
    }
    
    function getReportCardDetails() public view returns (string, uint,string,uint,uint,uint,uint,string){
         return (Name,RollNo,Batch ,subject1Marks,subject2Marks,subject3Marks,subject4Marks,status);
    }
   
}
