FROM shpoont/whalebrew-aws-cli

LABEL io.whalebrew.name aws_completer
# See https://www.gnu.org/software/bash/manual/bash.html#Bash-Variables
LABEL io.whalebrew.config.environment '["COMP_KEY", "COMP_LINE", "COMP_POINT", "COMP_TYPE", "COMPREPLY"]'
LABEL io.whalebrew.config.volumes ''

ENTRYPOINT ["aws_completer"]
