module.exports = function (grunt) {
    grunt.initConfig({
        pkg: grunt.file.readJSON("package.json"),
        path: {
            assets: 'app/assets/',
            assetsStylesheets: 'app/assets/stylesheets/'
        },
        exec: {
            assetsPanelInstall: {
                cwd: '<%= path.assetsStylesheets %>panel',
                command: 'npm install && bower install'
            },
            assetsPanelUpdate: {
                cwd: '<%= path.assetsStylesheets %>panel',
                command: 'npm update && bower update'
            }
        }
    });

    grunt.loadNpmTasks('grunt-exec');

    grunt.registerTask('assets:panel:install', ['exec:assetsPanelInstall']);
    grunt.registerTask('assets:panel:update', ['exec:assetsPanelUpdate']);
};
