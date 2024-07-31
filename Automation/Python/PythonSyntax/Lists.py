#--------------------------
# --Lists--
# -------------------------
#[1] List items are Enclosed in Square brackets
#[2] List Are Ordered, to use Index To Access Item
#[3] List Are Mutable => Add, Delete, Edit
#[4] List Items Is Not Unique
#[5] List Can Have Different Data Types

# myList = ["One","Two","One",1,11.1,True]

# print(myList) # Display ALL List items
# print(myList[1])# Diplay Specific Index
# print(myList[-1]) # Accept Negative Index (That Means its Transverse Item from last to first)
# # Slice
# print(myList[1:4]) # Specifing what to display
# print(myList[:4]) # 
# print(myList[1:]) #
# print(myList[:]) #
# print(myList[1:4:2]) #

# myList[1:3] = [] # Clearing Lists Items
# print(myList) #

# --List Methods--

# append() - Adding items


# myFriends = ["Omar","Tamer","Abdelaal"]
# myOldFriends = ["Ahmed","Mohamed"]
# print(myFriends) 
# myFriends.append("Mostafa")
# print(myFriends) 
# myFriends.append(myOldFriends)
# print(myFriends[4][1])

# # extend() - adding List to List

# a = [1,2,3,4]
# b = [5,6,7,8]
# c = [7,6,5,4]
# a.extend(b)
# a.extend(c)
# print(a)

# # remove() - remove item

# myFriends = ["Omar","Tamer","Abdelaal"]

# myFriends.remove("Tamer")
# print(myFriends) 

# # sort(can be reversed(type reveresed)) - Order items

# myFriends.sort()
# print(myFriends) #Alphabit ordering
# myFriends.sort(reverse=True)
# print(myFriends) # Reverse Alphabit ordering

# # reverse() - Just reverse if it sorted or not

# myFriends = ["Omar","Tamer","Abdelaal"]

# myFriends.reverse()
# print(myFriends) # reverse algorithm

# # clear() - clearing all items

# myFriends = ["Omar","Tamer","Abdelaal"]
# myFriends.clear()
# print(myFriends)

# copy() - copying items of other list

# myFriends = ["Omar","Tamer","Abdelaal"]
# a = myFriends.copy()
# print(myFriends)
# print(a)


# a.append(4)
# print(a)
# print(myFriends)

# c = myFriends
# c.append(7)
# print(c)
# print(myFriends)

# count() - count list items

# len() - get length of list

# index() - getting index number  

# insert() - inserting new item at before specified position

# f = [1,79,5,3,4,56,8,9]
# f.insert(0,"Test")
# print(f)

#pop() - deleting items or removing item and returning it

# f = [1,79,5,3,4,56,8,9]
# print(f.pop(0))

#  set() - gets unique values in list

# myList = [1, 2 , 3 , 3 , 4, 5 , 1]

# unique_list = list(set(myList))
# print(unique_list)
