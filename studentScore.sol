// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract GradManger{
    mapping (string => uint256) public studentGrades;
    event GradeChanged(string indexed studentName, uint256 newGrade);
    function setGrade(string memory _studentName, uint256 _grade) public {
        studentGrades[_studentName] = _grade;
        emit GradeChanged(_studentName,_grade);

    }

    function getGrade(stringbbbbbbbbbbbbbb memory _studentName) public view returns (uint256){
        return studentGrades[_studentName];
    }

    function updataGrade(string memory _studentName , uint256 _newGrade) public {
        studentGrades[_studentName] = _newGrade;
        emit GradeChanged(_studentName, _newGrade);
    }
}