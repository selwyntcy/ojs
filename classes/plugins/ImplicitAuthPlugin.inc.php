<?php

/**
 * @file classes/plugins/ImplicitAuthPlugin.inc.php
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class ImplicitAuthPlugin
 * @ingroup plugins
 *
 * @brief Abstract class for implicit authentication plugins
 *
 * Contributed by Dan Galewsky, University of Texas
 */

import('lib.pkp.classes.plugins.Plugin');

abstract class ImplicitAuthPlugin extends Plugin {
	/**
	 * Constructor
	 */
	function ImplicitAuthPlugin() {
		parent::Plugin();
	}

	/**
	 * Authenticate a user based on some external conditions or system.
	 * Subclasses should implement this method.
	 * @return boolean
	 * @param $hookname String
	 * @param $args array args[0] should be populated upon return with a user
	 * object for authenticated user, if authentication was successful;
	 * otherwise, the method should not return (i.e. the request should be
	 * redirected to login or elsewhere).
	 */
	abstract function implicitAuth($hookname, $args);
}

?>
