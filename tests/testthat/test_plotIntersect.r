context('test_plotIntersect')

data(sinkhole)

test_that('Test Plotting Intersection of Two Profiles', {
  plotIntersect(sinkhole@profiles[[1]], sinkhole@profiles[[2]])
})

test_that('Test Plotting Intersection of All Profiles in a Profile Set', {
  plotIntersect(sinkhole)
})

test_that('Test Plotting Intersection of Two Profiles Without Intersection', {
  movedProfile <- sinkhole@profiles[[1]]
  movedProfile@processedData@pointsWithTopo$dist <- movedProfile@processedData@pointsWithTopo$dist + 100
  expect_that(plotIntersect(sinkhole@profiles[[2]], movedProfile),
              prints_text('No intersection between Profile 2 and Profile 1.'))
})