%lang starknet
from src.main import sum, mean, scalar_product, median, dot, min, max
from starkware.cairo.common.alloc import alloc


@view
func test_sum{}():
    alloc_locals
    let (local array : felt*) = alloc()
    assert array[0] = 1
    assert array[1] = 3
    assert array[2] = 2

    let (total) = sum(3, array)
    assert total = 6
    return ()
end

@view
func test_mean{}():
    alloc_locals
    let (local array : felt*) = alloc()
    assert array[0] = 9
    assert array[1] = 7
    assert array[2] = 8

    let (total) = mean(3, array)
    assert total = 8
    return ()
end

@view
func test_scalar_product{}():
    alloc_locals
    let (local array : felt*) = alloc()
    assert array[0] = 1 
    assert array[1] = 3 
    assert array[2] = 2 

    let (total) = scalar_product(3, 2, array)
    assert total = 12
    return ()
end

# @view
# func test_median{}():
#     alloc_locals
#     let (local array : felt*) = alloc()
#     assert array[0] = 1
#     assert array[1] = 3
#     assert array[2] = 2

#     let (total) = median(3, array)
#     assert total = 6
#     return ()
# end

@view
func test_dot{}():
    alloc_locals
    let (local array : felt*) = alloc()
    assert array[0] = 1
    assert array[1] = 3
    assert array[2] = 2

    let (local array1 : felt*) = alloc()
    assert array1[0] = 4
    assert array1[1] = 6
    assert array1[2] = 2

    let (total) = dot(3, array, array1)
    assert total = 26
    return ()
end

@view
func test_min{}():
    alloc_locals
    let (local array : felt*) = alloc()
    assert array[0] = 1
    assert array[1] = 3
    assert array[2] = 2

    let (total) = min(3, array)
    assert total = 1
    return ()
end

@view
func test_max{}():
    alloc_locals
    let (local array : felt*) = alloc()
    assert array[0] = 1
    assert array[1] = 3
    assert array[2] = 2

    let (total) = max(3, array)
    assert total = 3
    return ()
end
