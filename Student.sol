//SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;
contract Event{
    struct Student{
        string name;
        string emailid;
        uint256 rollnumber;
        uint256 timestamp;
        uint256 contactnumber;

    }
    mapping(uint256=>Student) public studentdatabase;
    uint256  rollnumber=1;
    event studentadded(
        string name,
        uint256 rollnumber,
        uint256 timestamp
    );
    function addStudent(
        string memory _name,
        string memory _emailid,
        uint256 _contactnumber

    )
    public{
        studentdatabase[rollnumber].name=_name;
        studentdatabase[rollnumber].emailid=_emailid;
        studentdatabase[rollnumber].rollnumber=rollnumber;
        studentdatabase[rollnumber].timestamp=block.timestamp;
        studentdatabase[rollnumber].contactnumber=_contactnumber;
        emit studentadded(_name,rollnumber,block.timestamp);
        rollnumber+=1;


    }
}
