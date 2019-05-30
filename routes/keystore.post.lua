--#ENDPOINT POST /keystore/{key}
Keystore.set({key=request.parameters.key,
              value=request.body.value})