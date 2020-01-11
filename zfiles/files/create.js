#!/usr/bin/env node

'use strict'

const string = process.argv[2]
console.log(string)
if (!string) {
  console.log("hey")
  console.log(process.env.PWD)
  process.exit(1);
}
console.log(11)
console.log(process.cwd())
const loc = process.env.PWD
const fs = require('fs');
const path = require('path');
const name = string.charAt(0).toUpperCase() + string.slice(1)

const { spawn, spawnSync } = require('child_process')

spawnSync('mkdir', [loc, name])

const createComponent = require('./component.js');
const ComponentData = createComponent(name)


const createApp = (ComponentData) => {
  let server = path.resolve(loc, name, 'index.js');
  fs.writeFile(server, ComponentData, function (err) {
    console.log(`${server} created`)
  })
}

createApp(ComponentData), 

module.exports = { };


