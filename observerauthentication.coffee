############################################################
import { sessionAuthentication } from "./authenticationfunctions.js"

############################################################
#region Regular Operations

############################################################
export getLatestOrders = (req) -> await sessionAuthentication(req.path, req.body)
############################################################
export getLatestTickers = (req) -> await sessionAuthentication(req.path, req.body)
############################################################
export getLatestBalances = (req) -> await sessionAuthentication(req.path, req.body)

#endregion

############################################################
#region Maintenance Operations

############################################################
export addRelevantAsset = (req) -> await sessionAuthentication(req.path, req.body)
############################################################
export removeRelevantAsset = (req) -> await sessionAuthentication(req.path, req.body)
############################################################
export getRelevantAssets = (req) -> await sessionAuthentication(req.path, req.body)

############################################################
export addRelevantAssetPair = (req) -> await sessionAuthentication(req.path, req.body)
############################################################
export removeRelevantAssetPair = (req) -> await sessionAuthentication(req.path, req.body)
############################################################
export getRelevantAssetPairs = (req) -> await sessionAuthentication(req.path, req.body)

############################################################
export getFailingIdentifiers = (req) -> await sessionAuthentication(req.path, req.body)
############################################################
export getServiceStatus = (req) -> await sessionAuthentication(req.path, req.body)

#endregion