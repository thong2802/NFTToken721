// contracts/GameItem.sol
// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract ERC721token is ERC721{
    using Strings for uint256;
    string public baseURI = "https://raw.githubusercontent.com/thong2802/NFTToken721/master/assets/";

    constructor() ERC71( "NFT Demo", "NFTDT") {

    }
    function tokenURL(uint256 tokenID) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        string memory buri = baseURI;
        return bytes(buri).length > 0
            ? string(abi.encodePacked(buri, tokenId.toString(), ".json"))
            : '';
    }

    function mint(address to, uint256 tokenId) external {
        _mint(to, tokenId);
    }

}