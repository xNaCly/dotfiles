; Inject into script = [[...]] as bash
((field
    name: (identifier) @_name
    value: (string 
             content: (string_content) @injection.content
             (#eq? @_name "script")
             (#set! injection.language "bash")
 )))
