const fs = require('fs/promises');

let index = new Map();

async function set(key, val) {
  let row = `${key},${val}\n`;
  try {
    await fs.appendFile('./db.txt', row);
  } catch (err) {
    console.log(err);
  }
  index.set(key, val);
}

function get(key) {
  let val = index.get(key);
  if (val == "") {
    console.log("try to search on file");
  }
  console.log(val);
}


get("dog");
set("dog", "hasmapset").then(() => {
  get("dog");
})
