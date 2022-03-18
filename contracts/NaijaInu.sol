// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract NaijaInu is ERC20, Ownable {
  constructor() ERC20("Naija Inu", "NAIJ") {
      _mint(msg.sender, 1000000 * 10 ** decimals());
  }
  function mint(address to, uint256 amount) public onlyOwner {
      _mint(to, amount);
  }
  // token price for ETH
  uint256 public tokensPerEth = 1000 * 10 ** decimals();
  function buyToken(address to) public payable{
      require(msg.value > 0, "Send ETH to buy some tokens");
      //require(msg.value == tokensPerEth);
      uint256 amount = msg.value * tokensPerEth;
    
      _mint(to, amount);
  }
 
}
