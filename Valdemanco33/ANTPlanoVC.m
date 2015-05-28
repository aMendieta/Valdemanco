//
//  ANTPlanoVC.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 19/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTPlanoVC.h"
#import "ANTVerMasPlanosVC.h"
#import "ANTPageContentViewController.h"



@implementation ANTPlanoVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _pageTitles = @[@"Plano General", @"Albala", @"La Boina", @"El Tejo", @"El Cuervo"];
    _pageImages = @[@"plano1.png", @"plano2.png", @"plano3.png", @"plano4.png", @"plano5.png"];
    
    // Create page view controller
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;
    
    ANTPageContentViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
    self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
    
    
    
}


#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((ANTPageContentViewController*) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((ANTPageContentViewController*) viewController).pageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageTitles count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (ANTPageContentViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.pageTitles count] == 0) || (index >= [self.pageTitles count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    ANTPageContentViewController *antContentVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ANTPageContentViewController"];
    antContentVC.imageFile = self.pageImages[index];
    antContentVC.titleText = self.pageTitles[index];
    antContentVC.pageIndex = index;
    
    return antContentVC;
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.pageTitles count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) onNuevoPlano:(ANTPlano *)unPlanoNuevo
{

}


#pragma mark - Navigation


// Pasar datos entre Escenas mediante Segues
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender
{

    //Idetifico el segue que se ha desencadenado
    if([[segue identifier] isEqualToString:@"verMasPlanos"])
    {
        ANTVerMasPlanosVC *masPlanosVC = segue.destinationViewController;
        [masPlanosVC setDelegate:self];
        //[segue.destinationViewController performSelector:@selector(setData:)
        //                                      withObject:self];
        
    }
}
- (IBAction)startWalkthrough:(id)sender {
     ANTPageContentViewController *startingViewController = [self viewControllerAtIndex:0];
     NSArray *viewControllers = @[startingViewController];
     [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionReverse animated:NO completion:nil];
}
@end
