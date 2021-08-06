// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC721Tradable.sol";
 
contract lulupunk is ERC721Tradable {
    constructor(address _proxyRegistryAddress)
        ERC721Tradable("Lulupunk", "LLPK", _proxyRegistryAddress)
    {}

    string  public JsonPath="http://www.lulupunk.com/api/TokenService.asmx/GetTokenJson?id=";
 
    function baseTokenURI() override public view  returns (string memory) {
        return JsonPath;
    }
 
    function SetIpfsJsonPath(string memory _jaonPath)  public 
    {
        JsonPath=_jaonPath;
    } 
}
