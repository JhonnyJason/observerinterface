############################################################
import * as h from "./observerhandlers"
import { performance } from "node:perf_hooks"

############################################################
import { argumentValidators as validate } from "./observerschemas.js"
import *  as authentication from "./observerauthentication.js"

############################################################
#region Regular Operations

############################################################
export getLatestOrders = (req, res) ->
    start = performance.now()
    
    try validate.getLatestOrders(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.getLatestOrders(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.getLatestOrders(req.body.clientPublicKey, req.body.timestamp, req.body.signature)
    try response = await h.getLatestOrders(req)
    catch err then return res.send({error: "execution: #{err.message}"})

    end = performance.now()
    diffMS = end - start
    console.log("/getLatestOrders took #{diffMS}ms\n")
    
    return res.send(response)

############################################################
export getLatestTickers = (req, res) ->
    start = performance.now()
    
    try validate.getLatestTickers(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.getLatestTickers(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.getLatestTickers(req.body.timestamp, req.body.signature)
    try response = await h.getLatestTickers(req)
    catch err then return res.send({error: "execution: #{err.message}"})

    end = performance.now()
    diffMS = end - start
    console.log("/getLatestTickers took #{diffMS}ms\n")
    
    return res.send(response)

############################################################
export getLatestBalances = (req, res) ->
    start = performance.now()
    
    try validate.getLatestBalances(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.getLatestBalances(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.getLatestBalances(req.body.clientPublicKey, req.body.timestamp, req.body.signature)
    try response = await h.getLatestBalances(req)
    catch err then return res.send({error: "execution: #{err.message}"})

    end = performance.now()
    diffMS = end - start
    console.log("/getLatestBalances took #{diffMS}ms\n")
    
    return res.send(response)

#endregion

############################################################
#region Maintenance Operations

############################################################
export addRelevantAsset = (req, res) ->
    start = performance.now()

    try validate.addRelevantAsset(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.addRelevantAsset(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    try response = await h.addRelevantAsset(req)
    catch err then return res.send({error: "execution: #{err.message}"})
    
    end = performance.now()
    diffMS = end - start
    console.log("/addRelevantAsset took #{diffMS}ms\n")

    return res.send(response)

############################################################
export removeRelevantAsset = (req, res) ->
    start = performance.now()

    try validate.removeRelevantAsset(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.removeRelevantAsset(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.removeRelevantAsset(req.body.publicKey, req.body.timestamp, req.body.signature)
    try response = await h.removeRelevantAsset(req)
    catch err then return res.send({error: "execution: #{err.message}"})
    
    end = performance.now()
    diffMS = end - start
    console.log("/removeRelevantAsset took #{diffMS}ms\n")

    return res.send(response)


############################################################
export addRelevantAssetPair = (req, res) ->
    start = performance.now()

    try validate.addRelevantAssetPair(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.addRelevantAssetPair(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.addRelevantAssetPair(req.body.publicKey, req.body.timestamp, req.body.signature)
    try response = await h.addRelevantAssetPair(req)
    catch err then return res.send({error: "execution: #{err.message}"})
    
    end = performance.now()
    diffMS = end - start
    console.log("/addRelevantAssetPair took #{diffMS}ms\n")

    return res.send(response)

############################################################
export removeRelevantAssetPair = (req, res) ->
    start = performance.now()

    try validate.removeRelevantAssetPair(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.removeRelevantAssetPair(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.removeRelevantAssetPair(req.body.publicKey, req.body.timestamp, req.body.signature)
    try response = await h.removeRelevantAssetPair(req)
    catch err then return res.send({error: "execution: #{err.message}"})
    
    end = performance.now()
    diffMS = end - start
    console.log("/removeRelevantAssetPair took #{diffMS}ms\n")

    return res.send(response)


############################################################
export getRelevantAssets = (req, res) ->
    start = performance.now()

    try validate.getRelevantAssets(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.getRelevantAssets(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.getRelevantAssets(req.body.publicKey, req.body.timestamp, req.body.signature)
    try response = await h.getRelevantAssets(req)
    catch err then return res.send({error: "execution: #{err.message}"})
    
    end = performance.now()
    diffMS = end - start
    console.log("/getRelevantAssets took #{diffMS}ms\n")

    return res.send(response)


############################################################
export getRelevantAssetPairs = (req, res) ->
    start = performance.now()

    try validate.getRelevantAssetPairs(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.getRelevantAssetPairs(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.getRelevantAssetPairs(req.body.publicKey, req.body.timestamp, req.body.signature)
    try response = await h.getRelevantAssetPairs(req)
    catch err then return res.send({error: "execution: #{err.message}"})
    
    end = performance.now()
    diffMS = end - start
    console.log("/getRelevantAssetPairs took #{diffMS}ms\n")

    return res.send(response)


############################################################
export getFailingIdentifiers = (req, res) ->
    start = performance.now()

    try validate.getFailingIdentifiers(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.getFailingIdentifiers(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.getFailingIdentifiers(req.body.publicKey, req.body.timestamp, req.body.signature)
    try response = await h.getFailingIdentifiers(req)
    catch err then return res.send({error: "execution: #{err.message}"})
    
    end = performance.now()
    diffMS = end - start
    console.log("/getFailingIdentifiers took #{diffMS}ms\n")

    return res.send(response)


############################################################
export getServiceStatus = (req, res) ->
    start = performance.now()

    try validate.getServiceStatus(req.body)
    catch err then return res.status(400).send({error: "validation: #{err.message}"})

    try await authentication.getServiceStatus(req)
    catch err then return res.status(401).send({error: "authentication: #{err.message}"})

    # response = await h.getServiceStatus(req.body.publicKey, req.body.timestamp, req.body.signature)
    try response = await h.getServiceStatus(req)
    catch err then return res.send({error: "execution: #{err.message}"})
    
    end = performance.now()
    diffMS = end - start
    console.log("/getServiceStatus took #{diffMS}ms\n")

    return res.send(response)


#endregion
