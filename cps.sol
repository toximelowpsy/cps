// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.26;
//  _    _    _    _    _    _    _    _    _    _    _    _    _    _
// / \  / \  / \  / \  / \  / \  / \  / \  / \  / \  / \  / \  / \  / \
//( c )( r )( y )( p )( t )( o )( p )( u )( n )( k )( s )( t )( a )( r )
// \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/  \_/

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

// changer tous les Cryptopunkstar et CPS par votre nom de token !
// ligne 18 et 20
contract Cryptopunkstar is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("Cryptopunkstar", "CPS")
        Ownable(initialOwner)
        ERC20Permit("Cryptopunkstar")
    {
        _mint(msg.sender, 21000000000 * 10 ** decimals());
    }
//for mintable cryptopunkstar
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
