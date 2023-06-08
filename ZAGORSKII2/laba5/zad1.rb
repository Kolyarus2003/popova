argument = ARGV[0]
if(Gem.win_platform? && ARGV[0])
    argument = argument.dup
    .force_enconding("IBM866")
    .encode("IBM866","cp1251")
    .encode("UTF-8")
end

