const fs = require('fs').promises;
const home = require('os').homedir();

async function readFile(filePath) {
    const data = await fs.readFile(filePath);
    return data.toString();
}

async function makeOutput() {
    try {
        await fs.mkdir('out');
    } catch (error) {
    }
}

async function writeFile(filePath, contents) {
    await fs.writeFile(filePath, contents);
}

async function assemble() {
    const unparsedConfig = await readFile('config.json');
    const config = JSON.parse(unparsedConfig);
    const sources = new Map();
    console.log('gathering sources...');
    let plugins = `\n\n\ncall vundle#begin()\nPlugin '${config.plugins.join('\'\nPlugin \'')}'\ncall vundle#end()\n\n\n`
    sources.set('plugins', plugins);
    for (const plugin of config.plugins) {

    }
    for (const source of config.sources) {
        let data = await readFile(source.path);
        if (process.argv.length > 2 && process.argv[2].includes('min')) {
            data = data.split('\n').filter((line) => {
                line = line.trim();
                return line.charAt(0) != '"' && line.length > 1;
            }).join('\n');
        }
        sources.set(source.name, data);
        console.log(`- '${source.name}' at '${source.path}'`);
    }
    makeOutput();
    console.log('\noutputting files...');
    for (const output of config.outputs) {
        let contents = '';
        for (const source of output.include) {
            contents += sources.get(source);
        }
        console.log(`- '${output.path}' ('${output.include.join('\', \'')}')`);
        writeFile(`out/${output.path}`, contents);
        writeFile(`${home}/${output.syspath}`, contents);
    }
}

assemble();

