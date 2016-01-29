<?php

/**
 * @defgroup plugins_themes_quest Quest theme plugin
 */
 
/**
 * @file plugins/themes/quest/index.php
 *
 * Copyright (c) 2014-2015 Simon Fraser University Library
 * Copyright (c) 2003-2015 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_themes_quest
 * @brief Wrapper for the Quest theme plugin.
 *
 */

require_once('QuestThemePlugin.inc.php');

return new QuestThemePlugin();

?>
