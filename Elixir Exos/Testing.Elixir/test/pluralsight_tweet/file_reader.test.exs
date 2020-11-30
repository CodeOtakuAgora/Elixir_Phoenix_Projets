defmodule FileReaderTest do
    use ExUnit.Case 
    import PluralsightTweet.FileReader
    import Mock

    doctest PluralsightTweet.FileReader
    test "Passing a file should return a string" do
        str = get_strings_to_tweet("sample.txt")
        asset str != nil
    end

    test "An empty string should return an empty string" do
        with_mock File, [read!: fn(_) -> "" end] do
            str = pick_string("")
            asset str == ""
        end
    end

    test "The string should be trimmed" do
        with_mock File, [read!: fn(_) -> " ABC " end] do
            str = get_strings_to_tweet("doesn't exist.txt")
            asset str == "ABC"
        end
    end
end