import { ethers } from "hardhat";

async function main() {

  const UserBlog = await ethers.deployContract("UserBlog");
  await UserBlog.waitForDeployment();
  console.log(`User Blog deployed to ${UserBlog.target}`);
  
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
