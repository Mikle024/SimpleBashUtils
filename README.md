# Simple Bash Utils

Проект разработан в рамках основного обучения в **School 21** от сбера. <img src="materials/images/heart_21_x10.gif" alt="drawing" width="20" height="20"/>

Этот проект включает в себя реализацию утилит `cat` и `grep`, которые используются для работы с текстовыми файлами в Unix-подобных системах.
Утилиты реализованы на языке **С** с использованием стандартов **C11** и **POSIX.1-2017**.
Проект предназначен для демонстрации навыков работы с системными утилитами и структурного программирования.

Необходимое установленное ПО для запуска данного проекта на вашем ПК:

- [GIT](https://git-scm.com/) - система контроля версий
- [GCC](https://gcc.gnu.org/) - компилятор (по умолчанию установлен на Unix-подобных системах)
- [BASH](https://www.gnu.org/software/bash/) - командная оболочка, для прогона scrip тестов (по умолчанию установлен на Unix-подобных системах)

## **Процедура запуска проекта:**

**1. С помощью GIT необходимо склонировать репозиторий с проектом себе на локальный компьютер, командой:**

`git clone git@github.com:Mikle024/SimpleBashUtils.git`

**2. Открыть папку с проектом.**

**3. Ниже предоставлены команды для запусков утилит:**

## Утилита `cat`

Утилита `cat` отображает содержимое текстовых файлов, объединяет несколько файлов и создает новые файлы. Она поддерживает следующие опции:

- `-b`: Нумерует только непустые строки.
- `-e`: Отображает символы конца строки как `$`.
- `-n`: Нумерует все выходные строки.
- `-s`: Сжимает несколько смежных пустых строк.
- `-t`: Отображает табы как `^I`.

Для запуска и тестирования утилиты `cat`, выполните следующие шаги:

1. Перейдите в папку с исходным кодом утилиты `cat`:

   ```sh
   cd src/cat

2. Соберите утилиту с помощью Makefile:

   ```sh
   make

3. Запустите утилиту:

   ```sh
   ./s21_cat [OPTIONS] [FILE]...

4. Запустите тесты:

   ```sh
   make test

## Утилита `grep`

Утилита grep используется для поиска строк, соответствующих регулярным выражениям, в текстовых файлах. Она поддерживает следующие опции:

- `-e` : Шаблон.
- `-i` : Игнорирует различия регистра.
- `-v` : Инвертирует смысл поиска соответствий.
- `-c` : Выводит только количество совпадающих строк.
- `-l` : Выводит только имена файлов с совпадениями.
- `-n` : Предваряет каждую строку номерами строк из файла ввода.

Дополнительно, реализованы следующие функции:

- Поддержка флагов: `-h`, `-s`, `-f`, `-o`.
- Поддержка комбинаций флагов, например, `-iv`, `-in`.

Для запуска и тестирования утилиты grep, выполните следующие шаги:

1. Перейдите в папку с исходным кодом утилиты grep:

   ```sh
   cd src/grep

2. Соберите утилиту с помощью Makefile:

   ```sh
   make

3. Запустите утилиту:

   ```sh
   ./s21_grep [OPTIONS] TEMPLATE [FILE]...

4. Запустите тесты:

   ```sh
   make test

## Сборка проекта

Проект использует Makefile для сборки утилит. Чтобы собрать утилиты, выполните следующие команды:

1. Перейдите в корневую папку проекта:

   ```sh
   cd path/to/project

2. Соберите утилиты cat и grep:

    ```sh
   make

## Тестирование

Для тестирования утилит убедитесь, что у вас установлены все необходимые зависимости.
В проекте предусмотрены интеграционные тесты, которые проверяют функциональность команд.

1. Для запуска тестов используйте:

    ```sh
   make test

## Завершение работы

После завершения работы убедитесь, что все процессы завершены.

1. Вы можете удалить сгенерированные файлы с помощью:

    ```sh
   make clean