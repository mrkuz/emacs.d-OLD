;; Add filename after element
(defun my/org-ql-view--format-element (fun &rest args)
  (if (not args)
      ""
    (let* ((element args)
           (properties (cadar element))
           (result (apply fun element))
           (filename (buffer-file-name (marker-buffer (plist-get properties :org-marker))))
           (name (downcase (string-remove-suffix ".org"
                            (string-remove-prefix (concat (expand-file-name org-directory) "/") filename)))))
      (concat result " [" name "]"))))

(use-package org-ql
  :defer t
  :init
  (advice-add 'org-ql-view--format-element :around 'my/org-ql-view--format-element)
  (setq org-agenda-custom-commands
        '(("o" "Overview"
           ((org-ql-block '(and (todo "TODO" "EVENT") (scheduled :on today)) ((org-ql-block-header "Today")) )
            (org-ql-block '(and (todo "TODO") (scheduled :to -1)) ((org-ql-block-header "Missed")))
            (org-ql-block '(and (todo "TODO" "EVENT") (scheduled :from 1 :to 7)) ((org-ql-block-header "Upcoming")))
            (org-ql-block '(and (todo "TODO") (not (scheduled))) ((org-ql-block-header "Next")))
            )))))
