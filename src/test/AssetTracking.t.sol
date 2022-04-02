// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "ds-test/test.sol";
import "../AssetTracking.sol";

contract ContractTest is DSTest {

    AssetTracking ast;

    function setUp() public {
        ast = new AssetTracking();
    }

    function testOrderStatus() public {
        ast.setOrderStatus(100, 0);
        uint orderStatus = ast.getOrderStatus(0);
        assertEq(orderStatus,0);
        ast.updateOrderStatus(0, 2);
        orderStatus = ast.getOrderStatus(0);
        assertEq(orderStatus,2);
    }


}
