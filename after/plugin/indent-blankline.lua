local status, ibl = pcall(require, 'ibl')

if not status then
    print('Indent-blankLine package is not installed')
    return
end

ibl.setup()
