// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;
    mapping(address => bool) public voters;
    uint public candidatesCount;
    string public electionName;
    address public owner;

    event CandidateAdded(uint id, string name);
    event Voted(uint candidateId);

    constructor(string memory _electionName) {
        electionName = _electionName;
        owner = msg.sender;
    }

    function addCandidate(string memory _name) public {
        require(msg.sender == owner, "Only owner can add candidates");
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
        emit CandidateAdded(candidatesCount, _name);
    }

    function vote(uint _candidateId) public {
        require(!voters[msg.sender], "You have already voted");
        require(_candidateId > 0 && _candidateId <= candidatesCount, "Invalid candidate ID");

        voters[msg.sender] = true;
        candidates[_candidateId].voteCount++;
        emit Voted(_candidateId);
    }

    function getCandidate(uint _candidateId) public view returns (uint, string memory, uint) {
        Candidate memory candidate = candidates[_candidateId];
        return (candidate.id, candidate.name, candidate.voteCount);
    }

    function getResults() public view returns (string memory winnerName, uint winnerVoteCount) {
        uint winningVoteCount = 0;

        for (uint i = 1; i <= candidatesCount; i++) {
            if (candidates[i].voteCount > winningVoteCount) {
                winningVoteCount = candidates[i].voteCount;
                winnerName = candidates[i].name;
            }
        }

        winnerVoteCount = winningVoteCount;
    }
}
