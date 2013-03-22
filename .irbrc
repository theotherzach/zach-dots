require 'irb/completion'
ARGV.concat [ "--readline", "--prompt-mode", "simple" ]

IRB.conf[:USE_READLINE] = true
