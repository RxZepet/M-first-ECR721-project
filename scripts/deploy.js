
// import ethers
const { ethers } = require("hardhat");

async function main() {

  // script to deploy the 'NFTee.sol' contract
  const contract = await ethers.getContractFactory("NFTee");
  const deployedContract = await contract.deploy();
  // wait for deployment to finish
  await deployedContract.deployed();
  //3. print the address of the deployed contract 
  console.log("NFT contract deployed to: ", deployedContract.address);



}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1)
  });