// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

contract Election {
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    mapping(address => bool) public voters;
    mapping (uint =>Candidate) public candidates;
    uint public candidatesCount;

    event voteEvent(uint indexed candidateId);

    constructor() public {
        addCandidate("Trump");
        addCandidate("Harris");
        
    }

    function addCandidate(string memory _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount,_name,0);
    }

    function vote(uint _candidateId) public {
        require(!voters[msg.sender],"Already voted");
        require(_candidateId > 0 && _candidateId <=candidatesCount, "Invalid candidate ID");
        voters[msg.sender] = true;
        candidates[_candidateId].voteCount++;
        emit voteEvent(_candidateId);
    }
}