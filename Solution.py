class Solution(object):
  def findMedianSortedArrays(self,nums1, nums2):
    list3 = []
    list3 = nums1 +nums2
    list3.sort()  
    x = len(list3)
    if(x%2!=0):
      return float(list3[x//2])
    else:
       midl1 = list3[(x//2)-1]
       midl2 = list3[x//2]
       m = (midl1 + midl2)/2.0
       return m 
