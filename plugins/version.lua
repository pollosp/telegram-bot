function run(msg, matches)
  return 'Tocamelasetabot v 0.1 prealpha based on yagop/telegram-bot https://github.com/yagop/telegram-bot '
end

return {
    description = "Version",
    usage = "!version",
    patterns = {"^!version$"},
    run = run
}
