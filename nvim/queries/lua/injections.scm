; Inject into script = [[...]] as bash
; ((field
;     name: (identifier) @_name (#eq? @_name "script")
;     value: (string 
;              content: (string_content) @bash
;              (#offset! @bash 0 2 0 -2)
;              (#set! injection.language "bash")
;  )))

; Inject into script = [[...]] as bash
((field
    name: (identifier) @_name
    value: (string 
             content: (string_content) @injection.content
             (#eq? @_name "script")
             (#set! injection.language "bash")
 )))
