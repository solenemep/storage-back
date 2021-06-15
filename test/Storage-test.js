const { expect } = require('chai');

describe('Storage', function () {
  let Storage, storage, alice, bob;

  beforeEach(async function () {
    [dev, owner, alice, bob] = await ethers.getSigners();
    const Storage = await ethers.getContractFactory('Storage');
    const storage = await Storage.deploy('Hello, world!');
    await storage.deployed();
  });
  it('Should', async function () {});
});
