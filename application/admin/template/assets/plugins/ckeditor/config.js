/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

    config.toolbarGroups = [
        { name: 'document', groups: [ 'mode', 'document' ] },
        { name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
        { name: 'basicstyles', groups: [ 'basicstyles' ] },
        { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'paragraph' ] },
        '/',
        { name: 'links', groups: [ 'links' ] },
        { name: 'insert', groups: [ 'insert' ] },
        { name: 'styles', groups: [ 'styles' ] },
        { name: 'colors', groups: [ 'colors' ] },
        { name: 'tools', groups: [ 'tools' ] },
        { name: 'others', groups: [ 'others' ] }
    ];

    config.removeButtons = 'Save,Print,Templates,Find,Replace,SelectAll,Scayt,Form,Radio,TextField,Textarea,Select,Button,HiddenField,CopyFormatting,RemoveFormat,CreateDiv,Language,Anchor,ImageButton,PageBreak,Iframe,Flash,HorizontalRule,ShowBlocks,About,BidiRtl,BidiLtr,Checkbox,Smiley,PasteText,PasteFromWord,SpecialChar';

    config.enterMode = CKEDITOR.ENTER_BR;

    config.extraPlugins = 'html5validation';
};
