-- Лабораторна робота №5
-- студента групи АнД-31
-- Лаврія Руслана
-- Варіант №6
-- Мета: Ознайомитись з модульною органiзацiєю програм та засобами введеннявиведення. Набути досвiду компiляцiї Haskell-програм.

-- Завдання. Реалiзувати та скомпiлювати одну з програм, розроблених у лабораторнiй роботi No 3 для Вашого варiанта з введенням даних:
import  System.IO
--ЛР3:
--Знайти найменше спiльне кратне двох чисел.
lcm :: Int -> Int -> Int
lcm x y =  abs ((x `quot` (gcd x y)) * y)
-- lcm 18 24
-- 72
-- 1) з клавіатури в консоль
fromKeyboardToConsole = do
    putStrLn "Enter first num:"
    fnum <- getLine
    putStrLn "Enter second num:"
    snum <- getLine
    let f = read fnum :: Int
    let s = read snum :: Int
    let answer = lcm f s
    print answer

-- fromKeyboardToConsole
--Enter first num:
-- 18
--Enter second num:
-- 24
--72

-- 2) з клавіатури в файл
fromKeyboardToFile = do
    putStrLn "Enter first num:"
    fnum <- getLine
    putStrLn "Enter second num:"
    snum <- getLine
    let f = read fnum :: Int
    let s = read snum :: Int
    let answer = lcm f s
    writeFile "lab5//keyboardOut.txt" (show answer)

-- fromKeyboardToFile
--Enter first num:
-- 18
--Enter second num:
-- 24
--файл "lab5//keyboardOut.txt"

-- 3) з файлу в консоль
fromFileToKeyboard :: IO ()
fromFileToKeyboard = do
    h <- openFile "lab5//input.txt" ReadMode
    str <- hGetLine h
    let f = read str :: Int
    str <- hGetLine h
    let s = read str :: Int
    let answer = lcm f s
    print answer

-- fromFileToKeyboard
-- 72

-- 4) з файлу в файл

fromFileToFile :: IO ()
fromFileToFile = do
    h <- openFile "lab5//input.txt" ReadMode
    str <- hGetLine h
    let f = read str :: Int
    str <- hGetLine h
    let s = read str :: Int
    let answer = lcm f s
    writeFile "lab5//fileOut.txt" (show answer)

-- fromFileToFile
--файл "/ab5//fileOut.txt"