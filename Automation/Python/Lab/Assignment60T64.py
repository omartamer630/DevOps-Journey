# task 1

# def get_score(**skills):
  
#   for skill_key , skill_value in skills.items():
#     print(f"{skill_key} => {skill_value}")

# get_score(Math=90, Science=80, Language=70)

# get_score(Logic=70, Problems=60)

# task 2

# def get_people_scores(name = None,**skills):

#   if not skills :
#     print(f"Hello {name} You Have No Scores To Show")
#     return []
#   if name:
#     print(f"Hello {name} This Is Your Score Table:")
#   for skill_key , skill_value in skills.items():
#       print(f"{skill_key} => {skill_value}")

# get_people_scores("Ahmed")

# print("=" * 30)

# get_people_scores(Logic=70, Problems=60)

# print("=" * 30)

# get_people_scores("Mahmoud", Logic=70, Problems=60)

# task 3
# myDict = {
# "Math" : "90",
# "Science" : "80",
# "Language" : "70"
# }

# def get_people_scores(name = None,**skills):

#   if not skills :
#     print(f"Hello {name} You Have No Scores To Show")
#     return []
#   if name:
#     print(f"Hello {name} This Is Your Score Table:")
#   for skill_key , skill_value in skills.items():
#       print(f"{skill_key} => {skill_value}")

# get_people_scores("Mahmoud", **myDict)

# print("=" * 30)

# get_people_scores("Ahmed")

# print("=" * 30)

# get_people_scores(**myDict)
