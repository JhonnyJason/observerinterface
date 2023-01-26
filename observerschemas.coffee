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
removeClientToServeArguments = {
    authCode: STRINGHEX64
    assets: ARRAY
    subscriber: STRING
}

#endregion

############################################################
#region Maintenance Operations

############################################################
addRelevantAsset = {
    authCode: STRINGHEX64
    exchangeName: STRING
    ourName: STRING
}
############################################################
removeRelevantAsset = {
    authCode: STRINGHEX64
    ourName: STRING
}
############################################################
getRelevantAssets = {
    authCode: STRINGHEX64
}

############################################################
addRelevantAssetPair = {
    authCode: STRINGHEX64
    exchangeName: STRING
    ourName: STRING
}
############################################################
removeRelevantAssetPair = {
    authCode: STRINGHEX64
    ourName: STRING
}
############################################################
getRelevantAssetPairs = {
    authCode: STRINGHEX64
}

############################################################
getFailingIdentifiers = {
    authCode: STRINGHEX64
}
############################################################
getServiceStatus = {
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

#endregion


############################################################
export responseValidators = {
    ## Master Functions
    addClientToServe: -> true
    getClientsToServe: (response) -> validate(response, getClientsToServeResponse)
    removeClientToServe: -> true
    ## Client Functions
    getNodeId: (response) -> validate(response, getNodeIdResponse)
    startSession: -> true
}

export argumentValidators = {
    addClientToServe: (args) -> validate(args, addClientToServeArguments)
    getClientsToServe: (args) -> validate(args, getClientsToServeArguments)
    removeClientToServe: (args) -> validate(args, removeClientToServeArguments)
    ## Client Functions
    getNodeId: (args) -> validate(args, getNodeIdArguments)
    startSession: (args) -> validate(args, startSessionArguments)
}