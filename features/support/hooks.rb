cenario = 1

After('@Cadastro') do
path = "C:/Users/Inmetrics.LP1439/Dojo2/Cadastro/"
file = ".png"

save_screenshot(path + cenario.to_s + file)

cenario = cenario+1
end


After('@Editar') do
path = "C:/Users/Inmetrics.LP1439/Dojo2/Editar/"
file = ".png"

save_screenshot(path + cenario.to_s + file)

cenario = cenario+1
end


After('@Excluir') do
path = "C:/Users/Inmetrics.LP1439/Dojo2/Excluir/"
file = ".png"

save_screenshot(path + cenario.to_s + file)

cenario = cenario+1
end