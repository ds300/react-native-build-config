
const env = require('process').env;
const fs = require('fs');
const path = require('path');

/* eslint-disable dot-notation */ // don't ask why
const buildDir = env['TARGET_BUILD_DIR'];
const resourcesDir = env['UNLOCALIZED_RESOURCES_FOLDER_PATH'];

if (!resourcesDir) {
  throw new Error(
    'react-native-build-config iOS script executed at the wrong time.' +
    ' Make sure to put the Run Script task after the Copy Bundle Resources task'
  );
}

fs.writeFileSync(
  path.join(buildDir, resourcesDir, 'reactNativeBuildConfig.json'),
  JSON.stringify({
    yo: 'mama',
    is: 'whack',
    she: {
      aint: 'got',
      no: 'sense',
    },
  }, null, '  ')
);
