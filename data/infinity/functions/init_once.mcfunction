# Do your one-time startup logic here
say spawning stuctures
function infinity:aether_load
function infinity:eye_load
function infinity:orb_load
function infinity:scepter_load
function infinity:tesseract_load
function infinity:vormir_load

# Mark as completed
scoreboard players set global initCheck 2

kill @e[type=item,nbt={Item:{id:"infinity:scepter"}},distance=..6000]
kill @e[type=item,nbt={Item:{id:"infinity:aether"}}]
kill @e[type=item,nbt={Item:{id:"infinity:tesseract"}}]