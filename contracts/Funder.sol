//SPDX-License-Identifier: MIT
pragma solidity >= 0.4.0 < 0.9.0;

contract Funder{
    uint public numOfFunders;

    mapping(uint => address) private funders;

    receive() external payable{}     // receive function get ether from transfer 


    function transfer() external payable{
        funders[numOfFunders] = msg.sender;
    }

    function withdraw(uint withdrawAmount) external{
        require(withdrawAmount <= 2000000000000000000, "Can't withdraw more than two ether");
        payable(msg.sender).transfer(withdrawAmount);
    }

}
