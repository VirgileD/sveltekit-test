#!/bin/bash

# Cannot use import statement outside a module
# /home/a134883/Projects/RadarRoadmap/roadmap/node_modules/@popperjs/core/dist/esm/popper.js:1
# import { popperGenerator, detectOverflow } from "./createPopper.js";
# ^^^^^^

# SyntaxError: Cannot use import statement outside a module
#     at Object.compileFunction (node:vm:360:18)
#     at wrapSafe (node:internal/modules/cjs/loader:1084:15)
#     at Module._compile (node:internal/modules/cjs/loader:1119:27)
#     at Object.Module._extensions..js (node:internal/modules/cjs/loader:1209:10)
#     at Module.load (node:internal/modules/cjs/loader:1033:32)
#     at Function.Module._load (node:internal/modules/cjs/loader:868:12)
#     at ModuleWrap.<anonymous> (node:internal/modules/esm/translators:169:29)
#     at ModuleJob.run (node:internal/modules/esm/module_job:193:25)
#     at async Promise.all (index 0)
#     at async ESMLoader.import (node:internal/modules/esm/loader:526:24)


sed -i '12i     "type": "module",' ../node_modules/@popperjs/core/package.json
