lua << END
require('telescope').setup{
	defaults = {
		file_ignore_patterns = {
			".git",
			"node_modules",
			"target"
		}
	}
}
END
