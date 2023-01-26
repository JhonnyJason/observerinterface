############################################################
import { masterAuthentication, clientAuthentication } from "./authenticationfunctions.js"

############################################################
#region Regular Operations

############################################################
export getLatestOrders = (req) -> await clientAuthentication(req.path, req.body)
############################################################
export getLatestTickers = (req) -> await clientAuthentication(req.path, req.body)
############################################################
export getLatestBalances = (req) -> await clientAuthentication(req.path, req.body)

#endregion

############################################################
#region Maintenance Operations

############################################################
export addRelevantAsset = (req) -> await clientAuthentication(req.path, req.body)
############################################################
export removeRelevantAsset = (req) -> await clientAuthentication(req.path, req.body)
############################################################
export getRelevantAssets = (req) -> await clientAuthentication(req.path, req.body)

############################################################
export addRelevantAssetPair = (req) -> await clientAuthentication(req.path, req.body)
############################################################
export removeRelevantAssetPair = (req) -> await clientAuthentication(req.path, req.body)
############################################################
export getRelevantAssetPairs = (req) -> await clientAuthentication(req.path, req.body)

############################################################
export getFailingIdentifiers = (req) -> await clientAuthentication(req.path, req.body)
############################################################
export getServiceStatus = (req) -> await clientAuthentication(req.path, req.body)

#endregion