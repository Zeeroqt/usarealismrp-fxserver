resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

client_script 'spawnmanager.lua'

export 'getRandomSpawnPoint'
export 'spawnPlayer'
export 'addSpawnPoint'
export 'removeSpawnPoint'
export 'loadSpawns'
export 'setAutoSpawn'
export 'setAutoSpawnCallback'
export 'forceRespawn'

fx_version 'adamant'
games { 'rdr3', 'gta5' }

rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'