const { ethers } = require("hardhat");

const main = async () => {
  const counterFactory = await ethers.getContractFactory("Counter");

  const counterContract = await counterFactory.deploy(0);

  console.log("Contract deployed to address: ", counterContract.address);
};

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
