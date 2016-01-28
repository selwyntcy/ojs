<?php

/**
 * @file controllers/grid/citation/CitationGridHandler.inc.php
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2000-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class CitationGridHandler
 * @ingroup controllers_grid_citation
 *
 * @brief Handle OJS specific parts of citation grid requests.
 */

import('lib.pkp.classes.controllers.grid.citation.PKPCitationGridHandler');

class CitationGridHandler extends PKPCitationGridHandler {
	/**
	 * Constructor
	 */
	function CitationGridHandler() {
		parent::PKPCitationGridHandler();
		$this->addRoleAssignment(
				array(ROLE_ID_MANAGER, ROLE_ID_SECTION_EDITOR),
				array('fetchGrid', 'addCitation', 'editCitation', 'updateRawCitation',
					'checkCitation', 'updateCitation', 'deleteCitation', 'exportCitations',
					'fetchCitationFormErrorsAndComparison', 'sendAuthorQuery'));
	}


	//
	// Implement template methods from PKPHandler
	//
	/**
	 * @copydoc PKPHandler::authorize()
	 */
	function authorize($request, &$args, $roleAssignments) {
		// Make sure the user can edit the submission in the request.
		import('lib.pkp.classes.security.authorization.SubmissionAccessPolicy');
		$this->addPolicy(new SubmissionAccessPolicy($request, $args, $roleAssignments, 'assocId'));
		return parent::authorize($request, $args, $roleAssignments);
	}

	/**
	 * @copydoc PKPHandler::initialize()
	 */
	function initialize($request, $args) {
		// Associate the citation editor with the authorized article.
		$this->setAssocType(ASSOC_TYPE_ARTICLE);
		$article = $this->getAuthorizedContextObject(ASSOC_TYPE_ARTICLE);
		assert(is_a($article, 'Article'));
		$this->setAssocObject($article);

		parent::initialize($request, $args);
	}

	//
	// Override methods from PKPCitationGridHandler
	//
	/**
	 * @copydoc PKPCitationGridHandler::exportCitations()
	 */
	function exportCitations($args, $request) {
		$dispatcher = $this->getDispatcher();
		$articleMetadataUrl = $dispatcher->url($request, ROUTE_PAGE, null, 'editor', 'viewMetadata', $this->getAssocId());
		$noCitationsFoundMessage = __("submission.citations.editor.pleaseImportCitationsFirst", array('articleMetadataUrl' => $articleMetadataUrl));
		return parent::exportCitations($args, $request, $noCitationsFoundMessage);
	}
}
