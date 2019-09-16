def my_bag_of_words(text, words_to_index, dict_size):
    """
        text: a string
        dict_size: size of the dictionary
        
        return a vector which is a bag-of-words representation of 'text'
    """
    result_vector = np.zeros(dict_size)
    for i in text.split():
        if i in words_to_index: 
            result_vector[words_to_index[i]] += 1
    return result_vector
