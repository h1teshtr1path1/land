pragma solidity ^0.4.18;

import "../Storage.sol";
import "../upgradable/Proxy.sol";


contract LANDProxy is Storage, Proxy {
}

//currentContract address -> ProxyStorage.sol
//Fallback function present in Proxy.sol, calls delegatedFwd(currentContract, proxyOwner)
//present in DelegateProxy.sol.
//Upgrade function in Proxy.sol, upgrades currentContract address to new contract and emits upgrade event.