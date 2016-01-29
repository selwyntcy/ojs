<?php

/**
 * @file plugins/themes/quest/QuestThemePlugin.inc.php
 *
 * Copyright (c) 2014-2015 Simon Fraser University Library
 * Copyright (c) 2003-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class QuestThemePlugin
 * @ingroup plugins_themes_quest
 *
 * @brief Quest theme
 */

import('lib.pkp.classes.plugins.ThemePlugin');

class QuestThemePlugin extends ThemePlugin {
	/**
	 * Constructor
	 */
	function QuestThemePlugin() {
		parent::ThemePlugin();

		HookRegistry::register('Templates::Common::Footer::PageFooter', array($this, 'printJavascript'));
	}

	/**
	 * Get the name of the settings file to be installed on new journal
	 * creation.
	 * @return string
	 */
	function getContextSpecificPluginSettingsFile() {
		return $this->getPluginPath() . '/settings.xml';
	}

	/**
	 * Get the name of the settings file to be installed site-wide when
	 * OJS is installed.
	 * @return string
	 */
	function getInstallSitePluginSettingsFile() {
		return $this->getPluginPath() . '/settings.xml';
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.quest.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.quest.description');
	}

	/**
	 * @see ThemePlugin::getLessStylesheet
	 */
	function getLessStylesheet() {
		return 'styles/index.less';
	}

	/**
	 * Print JavaScript file into the footer
	 * @param $hookName string
	 * @param $args array
	 * @return boolean Normal hook handling conventions.
	 */
	function printJavascript() {
		$request = Registry::get('request');
		echo '<script src="' . $request->getBaseUrl() . '/' . $this->getPluginPath() . '/js/main.js" type="text/javascript"></script>';
		return false;
	}
}

?>
