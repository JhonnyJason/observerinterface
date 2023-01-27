############################################################
import *  as service from "./servicefunctions.js"
import { responseValidators as validate} from "./observerschemas.js"

############################################################
ok = true

############################################################
#region Regular Operations

############################################################
export getLatestOrders = (req) ->
    response = await service.getLatestOrders(req)

    try validate.getLatestOrders(response)
    catch err then throw new Error("Error: service.getLatestOrders - response format: #{err.message}")

    return response

############################################################
export getLatestTickers = (req) ->
    response = await service.getLatestTickers(req)

    try validate.getLatestTickers(response)
    catch err then throw new Error("Error: service.getLatestTickers - response format: #{err.message}")

    return response

############################################################
export getLatestBalances = (req) ->
    response = await service.getLatestBalances(req)

    try validate.getLatestBalances(response)
    catch err then throw new Error("Error: service.getLatestBalances - response format: #{err.message}")

    return response

#endregion

############################################################
#region Maintenance Operations

############################################################
export addRelevantAsset = (req) ->
    await service.addRelevantAsset(req)
    return {ok}

############################################################
export removeRelevantAsset = (req) ->
    await service.removeRelevantAsset(req)
    return {ok}

############################################################
export getRelevantAssets = (req) ->
    response = await service.getRelevantAssets(req)

    try validate.getRelevantAssets(response)
    catch err then throw new Error("Error: service.getRelevantAssets - response format: #{err.message}")

    return response


############################################################
export addRelevantAssetPair = (req) ->
    await service.addRelevantAssetPair(req)
    return {ok}

############################################################
export removeRelevantAssetPair = (req) ->
    await service.removeRelevantAssetPair(req)
    return {ok}

############################################################
export getRelevantAssetPairs = (req) ->
    response = await service.getRelevantAssetPairs(req)

    try validate.getRelevantAssetPairs(response)
    catch err then throw new Error("Error: service.getRelevantAssetPairs - response format: #{err.message}")

    return response


############################################################
export getFailingIdentifiers = (req) ->
    response = await service.getFailingIdentifiers(req)

    try validate.getFailingIdentifiers(response)
    catch err then throw new Error("Error: service.getFailingIdentifiers - response format: #{err.message}")

    return response

############################################################
export getServiceStatus = (req) ->
    response = await service.getServiceStatus(req)

    try validate.getServiceStatus(response)
    catch err then throw new Error("Error: service.getServiceStatus - response format: #{err.message}")

    return response


#endregion