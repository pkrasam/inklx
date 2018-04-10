pragma solidity ^0.4.20;

/* This is a Simple Standard Minimium Viable Token named "FRTH" for the inklx protocol */
contract FrthToken {
    /* This creates an array with all balances of "FRTH" */
    mapping (address => uint256) public balanceOf;

    /* Initializes contract with initial supply of "FRTH" tokens to the creator of the inklx contract */
    function FrthToken(
        uint256 initialSupply
        ) public {
        balanceOf[msg.sender] = initialSupply;              // Give the inklx creator all inital "FRTH" tokens of 100,000,000
    }

    /* Send FRTH tokens */
    function transfer(address _to, uint256 _value) public {
        require(balanceOf[msg.sender] >= _value);           // Check if the inklx sender has enough "FRTH" tokens
        require(balanceOf[_to] + _value >= balanceOf[_to]); // Check for overflows errors
        balanceOf[msg.sender] -= _value;                    // Subtract number of "FRTH" tokens from the sender
        balanceOf[_to] += _value;                           // Add the same number of "FRTH" tokens to the recipient
    }
}
