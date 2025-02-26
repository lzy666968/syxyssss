// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// contract test1{
//     function abcd() public pure returns (uint256 _number){
//         bool _bool = true;
//         string memory _string = "asdfghjkl";
//          _number = 800;
//     }
// }

// contract test2{
//     struct Student{
//         uint256 id;
//         uint256 score;

//     }
//     Student student;
//     function initStudent() external {
//         student.id = 666;
//         student.score = 444;
//         Student storage _student = student;
//         _student.id = 7777;
//         _student.score = 400;
//     }

//     function getStudentId() public view returns (uint256){
//         return student.id;
//     }
//     function getStudentScore() public view returns (uint256){
//         return student.score;
//     }
// }

// contract test3{
//     mapping (uint256 => string) public names;

//     function aaa(uint256 key, string memory name) public {
//         names[key] = name;
//     }
//     function bbb(uint256 key, string memory newName) public {
//         names[key] = newName;
//     } 
// }

// contract test4{
//     function reMake() public pure returns(uint256, bool, uint256[3] memory){
//         return (uint256(1), true, [1,3,6]);
//     } 
// }

// contract test5{
//     string public _string = "sdfsdf";
//     function a() external returns(string memory) {
//         delete _string;
//         return _string;
//     }
// }

