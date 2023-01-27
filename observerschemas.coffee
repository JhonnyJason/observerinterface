import {
    NUMBER, STRING, STRINGHEX, STRINGHEX32, STRINGHEX64, STRINGHEX128, BOOLEAN, ARRAY, NUMBERORNULL, OBJECT, validate
} from "thingy-schema-validate"


############################################################
#region Arguments

############################################################
#region Regular Operations

############################################################
getLatestOrdersArguments = {
    authCode: STRINGHEX64
    assetPairs: ARRAY
    subscriber: STRING
}
############################################################
getLatestTickersArguments = {
    authCode: STRINGHEX64
    assetPairs: ARRAY
    subscriber: STRING
}
############################################################
getLatestBalancesArguments = {
    authCode: STRINGHEX64
    assets: ARRAY
    subscriber: STRING
}

#endregion

############################################################
#region Maintenance Operations

############################################################
addRelevantAssetArguments = {
    authCode: STRINGHEX64
    exchangeName: STRING
    ourName: STRING
}
############################################################
removeRelevantAssetArguments = {
    authCode: STRINGHEX64
    ourName: STRING
}
############################################################
getRelevantAssetsArguments = {
    authCode: STRINGHEX64
}

############################################################
addRelevantAssetPairArguments = {
    authCode: STRINGHEX64
    exchangeName: STRING
    ourName: STRING
}
############################################################
removeRelevantAssetPairArguments = {
    authCode: STRINGHEX64
    ourName: STRING
}
############################################################
getRelevantAssetPairsArguments = {
    authCode: STRINGHEX64
}

############################################################
getFailingIdentifiersArguments = {
    authCode: STRINGHEX64
}
############################################################
getServiceStatusArguments = {
    authCode: STRINGHEX64
}

#endregion

#endregion

############################################################
#region Responses


############################################################
getRelevantAssetsResponse = {
    relevantAssets: ARRAY
}
############################################################
getRelevantAssetPairsResponse = {
    relevantAssetPairs: ARRAY
}
############################################################
getFailingIdentifiersResponse = {
    failingIdentifiers: ARRAY
}
## TODO
# ############################################################
# getSystemStatusResponse = {
#     # failingIdentifiers: ARRAY
# }

#endregion


############################################################
export responseValidators = {

    ## Regular Operations
    getLatestOrders: -> true
    getLatestTickers: -> true
    getLatestBalances: -> true

    ## Maintenance Operations
    addRelevantAsset: -> true
    removeRelevantAsset: -> true
    getRelevantAssets: (response) -> validate(response, getRelevantAssetsResponse)

    addRelevantAssetPair: -> true
    removeRelevantAssetPair: -> true
    getRelevantAssetPairs: (response) -> validate(response, getRelevantAssetPairsResponse)

    getFailingIdentifiers: (response) -> validate(response, getFailingIdentifiersResponse)

    ## TODO
    # getServiceStatus: (response) -> validate(response, getServiceStatusResponse)
    getServiceStatus: -> true

}

export argumentValidators = {

    ## Regular Operations
    getLatestOrders: (args) -> validate(args, getLatestOrdersArguments)
    getLatestTickers: (args) -> validate(args, getLatestTickersArguments)
    getLatestBalances: (args) -> validate(args, getLatestBalancesArguments)

    ## Maintenance Operations
    addRelevantAsset: (args) -> validate(args, addRelevantAssetArguments)
    removeRelevantAsset: (args) -> validate(args, removeRelevantAssetArguments)
    getRelevantAssets: (args) -> validate(args, getRelevantAssetsArguments)

    addRelevantAssetPair: (args) -> validate(args, addRelevantAssetPairArguments)
    removeRelevantAssetPair: (args) -> validate(args, removeRelevantAssetPairArguments)
    getRelevantAssetPairs: (args) -> validate(args, getRelevantAssetPairsArguments)
    
    getFailingIdentifiers: (args) -> validate(args, getFailingIdentifiersArguments)
    getServiceStatus: (args) -> validate(args, getServiceStatusArguments)

}