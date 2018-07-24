/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	
	config.filebrowserBrowseUrl = '/ArtMM/resources/ckfinder/ckfinder.html';
    config.filebrowserImageBrowseUrl = '/ArtMM/resources/ckfinder/ckfinder.html?type=Images';
    config.filebrowserFlashBrowseUrl = '/ArtMM/resources/ckfinder/ckfinder.html?type=Flash';
    config.filebrowserUploadUrl = '/ArtMM/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';
    config.filebrowserImageUploadUrl = '/ArtMM/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';
    config.filebrowserFlashUploadUrl = '/ArtMM/resources/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash';

};
